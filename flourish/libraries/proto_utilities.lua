function createRoundedRectButton (x, y, width, height, radius, text)
  -- create a group
  local btn = display.newGroup()
  -- make a rounded ractangle
  local btn_rect = display.newRoundedRect( x, y, width, height, radius )
  btn_rect.strokeWidth = 3
  btn_rect:setFillColor( 0.5 )
  btn_rect:setStrokeColor( 1, 0, 0 )
  -- add rounded rect to group
  btn:insert( btn_rect )

  -- create text on top of button
  local btn_text = display.newText( text, x, y, native.systemFont, 16 )
  btn_text:setFillColor( 1, 0, 0 )
  -- add text to group
  btn:insert( btn_text )

  return btn
end

function createImage (filepath, width, height, x, y)
  local img = display.newImageRect( filepath, width, height )
  img.x = x
  img.y = y

  return img
end

function toggleVisibility ( displayObject )
  if (displayObject.isVisible) then
    displayObject.isVisible = false
  else
    displayObject.isVisible = true
  end
end

function RingControl ()

  P1ColouringRing:setFrame(1)
  P1SelectionRing1:setFrame(1)
  P1SelectionRing2:setFrame(1)
  P1SelectionRing3:setFrame(1)

  P2ColouringRing:setFrame(1)
  P2SelectionRing1:setFrame(1)
  P2SelectionRing2:setFrame(1)
  P2SelectionRing3:setFrame(1)

  P3ColouringRing:setFrame(1)
  P3SelectionRing1:setFrame(1)
  P3SelectionRing2:setFrame(1)
  P3SelectionRing3:setFrame(1)

  P4ColouringRing:setFrame(1)
  P4SelectionRing1:setFrame(1)
  P4SelectionRing2:setFrame(1)
  P4SelectionRing3:setFrame(1)

  local RingSeconds = 7

  local function RingSecondsTime( event )

   -- Decrement the number of seconds
   RingSeconds = RingSeconds - 1

   -- Time is tracked in seconds; convert it to minutes and seconds
   local minutes = math.floor( RingSeconds / 7 )
   local seconds = RingSeconds % 7

   RingSecondstimecheck ()

  end

  RingSecondstimer = timer.performWithDelay( 1000, RingSecondsTime, RingSeconds )

  function RingSecondstimecheck ()
    if RingSeconds == 1 then

      P1ColouringRing:play()
      P1SelectionRing1:play()
      P1SelectionRing2:play()
      P1SelectionRing3:play()

      P2ColouringRing:play()
      P2SelectionRing1:play()
      P2SelectionRing2:play()
      P2SelectionRing3:play()

      P3ColouringRing:play()
      P3SelectionRing1:play()
      P3SelectionRing2:play()
      P3SelectionRing3:play()

      P4ColouringRing:play()
      P4SelectionRing1:play()
      P4SelectionRing2:play()
      P4SelectionRing3:play()
    end
    if RingSeconds <= 0 then
      P1ColouringRing:pause()
      P1SelectionRing1:pause()
      P1SelectionRing2:pause()
      P1SelectionRing3:pause()

      P2ColouringRing:pause()
      P2SelectionRing1:pause()
      P2SelectionRing2:pause()
      P2SelectionRing3:pause()

      P3ColouringRing:pause()
      P3SelectionRing1:pause()
      P3SelectionRing2:pause()
      P3SelectionRing3:pause()

      P4ColouringRing:pause()
      P4SelectionRing1:pause()
      P4SelectionRing2:pause()
      P4SelectionRing3:pause()
      
      timer.cancel( RingSecondstimer )
      RingControl ()
    end
  end
end

-----------------------------------------------
-- Fireworks functions for eaten ecosystems.
-----------------------------------------------

-- Fireworks sprite set up.

SmallFirework1sheetData = { width =480, height =270, numFrames=25, sheetContentWidth=12000, sheetContentHeight=270 } 
SmallFirework1Sheet1 = graphics.newImageSheet("images/fireworks/fireworks1 small sprite sheet 1 25 frames.png", SmallFirework1sheetData)

SmallFirework2sheetData = { width =480, height =270, numFrames=25, sheetContentWidth=12000, sheetContentHeight=270 } 
SmallFirework2Sheet1 = graphics.newImageSheet("images/fireworks/fireworks1 small sprite sheet 2 25 frames.png", SmallFirework2sheetData)

SmallFirework3sheetData = { width =480, height =270, numFrames=25, sheetContentWidth=12000, sheetContentHeight=270 } 
SmallFirework3Sheet1 = graphics.newImageSheet("images/fireworks/fireworks3 small sprite sheet 1 25 frames.png", SmallFirework3sheetData)

SmallFirework4sheetData = { width =480, height =270, numFrames=25, sheetContentWidth=12000, sheetContentHeight=270 } 
SmallFirework4Sheet1 = graphics.newImageSheet("images/fireworks/fireworks3 small sprite sheet 2 25 frames.png", SmallFirework4sheetData)

LargeFirework1sheetData = { width =521.4, height =270, numFrames=23, sheetContentWidth=12000, sheetContentHeight=270 } 
LargeFirework1Sheet1 = graphics.newImageSheet("images/fireworks/fireworks2 large sprite sheet 1 23 frames.png", LargeFirework1sheetData)

LargeFirework2sheetData = { width =521.4, height =270, numFrames=23, sheetContentWidth=12000, sheetContentHeight=270 } 
LargeFirework2Sheet1 = graphics.newImageSheet("images/fireworks/fireworks2 large sprite sheet 2 23 frames.png", LargeFirework2sheetData)

LargeFirework3sheetData = { width =521.4, height =270, numFrames=23, sheetContentWidth=12000, sheetContentHeight=270 } 
LargeFirework3Sheet1 = graphics.newImageSheet("images/fireworks/fireworks2 large sprite sheet 3 23 frames.png", LargeFirework3sheetData)

LargeFirework4sheetData = { width =521.4, height =270, numFrames=23, sheetContentWidth=12000, sheetContentHeight=270 } 
LargeFirework4Sheet1 = graphics.newImageSheet("images/fireworks/fireworks4 large sprite sheet 1 23 frames.png", LargeFirework4sheetData)

LargeFirework5sheetData = { width =521.4, height =270, numFrames=23, sheetContentWidth=12000, sheetContentHeight=270 } 
LargeFirework5Sheet1 = graphics.newImageSheet("images/fireworks/fireworks4 large sprite sheet 2 23 frames.png", LargeFirework5sheetData)

FireworkData = {
{name="Small1", sheet=SmallFirework1Sheet1, frames={ 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=750},
{name="Small2", sheet=SmallFirework2Sheet1, frames={ 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=500},
{name="Small3", sheet=SmallFirework3Sheet1, frames={ 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=375},
{name="Small4", sheet=SmallFirework4Sheet1, frames={ 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=750},
{name="Large1", sheet=LargeFirework1Sheet1, frames={ 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=750},
{name="Large2", sheet=LargeFirework2Sheet1, frames={ 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=500},
{name="Large3", sheet=LargeFirework3Sheet1, frames={ 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=750},
{name="Large4", sheet=LargeFirework4Sheet1, frames={ 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=750},
{name="Large5", sheet=LargeFirework5Sheet1, frames={ 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=375}
}

-- Fireworks functions for each player.

function P1fireworks ()

  P1fireworks1 = display.newSprite(SmallFirework1Sheet1, FireworkData)
  P1fireworks1.x = display.contentCenterX-1440
  P1fireworks1.y = display.contentCenterY+120
  P1fireworks1:scale(3, 3)
  P1fireworks1:setSequence( "Small1" )
  P1fireworks1:play()

  local P1fireworksSeconds = 7

  local function P1fireworksTimer( event )

    -- Decrement the number of seconds
    P1fireworksSeconds = P1fireworksSeconds - 1
 
    -- Time is tracked in seconds; convert it to minutes and seconds
    local minutes = math.floor( P1fireworksSeconds / 1 )
    local seconds = P1fireworksSeconds % 1
 
    P1fireworkstimecheck ()
 
  end
 
  P1fireworkstimer = timer.performWithDelay( 750, P1fireworksTimer, P1fireworksSeconds )
 
  function P1fireworkstimecheck ()
    if P1fireworksSeconds == 6 then
      P1fireworks2 = display.newSprite(SmallFirework2Sheet1, FireworkData)
      P1fireworks2.x = display.contentCenterX-1440
      P1fireworks2.y = display.contentCenterY+120
      P1fireworks2:scale(3, 3)
      P1fireworks2:setSequence( "Small2" )
      P1fireworks2:play()
    end
    if P1fireworksSeconds == 5 then
      display.remove( P1fireworks1 )
      P1fireworks3 = display.newSprite(LargeFirework1Sheet1, FireworkData)
      P1fireworks3.x = display.contentCenterX-1440
      P1fireworks3.y = display.contentCenterY+120
      P1fireworks3:scale(3, 3)
      P1fireworks3:setSequence( "Large1" )
      P1fireworks3:play()

      P1fireworks6 = display.newSprite(SmallFirework3Sheet1, FireworkData)
      P1fireworks6.x = display.contentCenterX-1440
      P1fireworks6.y = display.contentCenterY+120
      P1fireworks6:scale(3.2, 3.2)
      P1fireworks6:setSequence( "Small3" )
      P1fireworks6:play()
    end
    if P1fireworksSeconds == 4 then
      display.remove( P1fireworks2 )
      P1fireworks4 = display.newSprite(LargeFirework1Sheet1, FireworkData)
      P1fireworks4.x = display.contentCenterX-1440
      P1fireworks4.y = display.contentCenterY+120
      P1fireworks4:scale(3, 3)
      P1fireworks4:setSequence( "Large2" )
      P1fireworks4:play()

      P1fireworks7 = display.newSprite(SmallFirework4Sheet1, FireworkData)
      P1fireworks7.x = display.contentCenterX-1440
      P1fireworks7.y = display.contentCenterY+120
      P1fireworks7:scale(3.2, 3.2)
      P1fireworks7:setSequence( "Small4" )
      P1fireworks7:play()
    end
    if P1fireworksSeconds == 3 then
      display.remove( P1fireworks3 )
      display.remove( P1fireworks6 )
      P1fireworks5 = display.newSprite(LargeFirework1Sheet1, FireworkData)
      P1fireworks5.x = display.contentCenterX-1440
      P1fireworks5.y = display.contentCenterY+120
      P1fireworks5:scale(3, 3)
      P1fireworks5:setSequence( "Large3" )
      P1fireworks5:play()

      P1fireworks8 = display.newSprite(LargeFirework4Sheet1, FireworkData)
      P1fireworks8.x = display.contentCenterX-1440
      P1fireworks8.y = display.contentCenterY+120
      P1fireworks8:scale(3.2, 3.2)
      P1fireworks8:setSequence( "Large5" )
      P1fireworks8:play()
    end
    if P1fireworksSeconds == 2 then
      display.remove( P1fireworks4 )
      display.remove( P1fireworks7 )

      P1fireworks9 = display.newSprite(LargeFirework5Sheet1, FireworkData)
      P1fireworks9.x = display.contentCenterX-1440
      P1fireworks9.y = display.contentCenterY+120
      P1fireworks9:scale(3.2, 3.2)
      P1fireworks9:setSequence( "Large4" )
      P1fireworks9:play()
    end
    if P1fireworksSeconds == 1 then
      display.remove( P1fireworks5 )
      display.remove( P1fireworks8 )
    end
    if P1fireworksSeconds <= 0 then
      display.remove( P1fireworks9 )
      timer.cancel( P1fireworkstimer )
    end
  end
end

function P2fireworks ()

  P2fireworks1 = display.newSprite(SmallFirework1Sheet1, FireworkData)
  P2fireworks1.x = display.contentCenterX-470
  P2fireworks1.y = display.contentCenterY+120
  P2fireworks1:scale(3, 3)
  P2fireworks1:setSequence( "Small1" )
  P2fireworks1:play()

  local P2fireworksSeconds = 7

  local function P2fireworksTimer( event )

    -- Decrement the number of seconds
    P2fireworksSeconds = P2fireworksSeconds - 1
 
    -- Time is tracked in seconds; convert it to minutes and seconds
    local minutes = math.floor( P2fireworksSeconds / 1 )
    local seconds = P2fireworksSeconds % 1
 
    P2fireworkstimecheck ()
 
  end
 
  P2fireworkstimer = timer.performWithDelay( 750, P2fireworksTimer, P2fireworksSeconds )
 
  function P2fireworkstimecheck ()
    if P2fireworksSeconds == 6 then
      P2fireworks2 = display.newSprite(SmallFirework2Sheet1, FireworkData)
      P2fireworks2.x = display.contentCenterX-470
      P2fireworks2.y = display.contentCenterY+120
      P2fireworks2:scale(3, 3)
      P2fireworks2:setSequence( "Small2" )
      P2fireworks2:play()
    end
    if P2fireworksSeconds == 5 then
      display.remove( P2fireworks1 )
      P2fireworks3 = display.newSprite(LargeFirework1Sheet1, FireworkData)
      P2fireworks3.x = display.contentCenterX-470
      P2fireworks3.y = display.contentCenterY+120
      P2fireworks3:scale(3, 3)
      P2fireworks3:setSequence( "Large1" )
      P2fireworks3:play()

      P2fireworks6 = display.newSprite(SmallFirework3Sheet1, FireworkData)
      P2fireworks6.x = display.contentCenterX-470
      P2fireworks6.y = display.contentCenterY+120
      P2fireworks6:scale(3.2, 3.2)
      P2fireworks6:setSequence( "Small3" )
      P2fireworks6:play()
    end
    if P2fireworksSeconds == 4 then
      display.remove( P2fireworks2 )
      P2fireworks4 = display.newSprite(LargeFirework1Sheet1, FireworkData)
      P2fireworks4.x = display.contentCenterX-470
      P2fireworks4.y = display.contentCenterY+120
      P2fireworks4:scale(3, 3)
      P2fireworks4:setSequence( "Large2" )
      P2fireworks4:play()

      P2fireworks7 = display.newSprite(SmallFirework4Sheet1, FireworkData)
      P2fireworks7.x = display.contentCenterX-470
      P2fireworks7.y = display.contentCenterY+120
      P2fireworks7:scale(3.2, 3.2)
      P2fireworks7:setSequence( "Small4" )
      P2fireworks7:play()
    end
    if P2fireworksSeconds == 3 then
      display.remove( P2fireworks3 )
      display.remove( P2fireworks6 )
      P2fireworks5 = display.newSprite(LargeFirework1Sheet1, FireworkData)
      P2fireworks5.x = display.contentCenterX-470
      P2fireworks5.y = display.contentCenterY+120
      P2fireworks5:scale(3, 3)
      P2fireworks5:setSequence( "Large3" )
      P2fireworks5:play()

      P2fireworks8 = display.newSprite(LargeFirework4Sheet1, FireworkData)
      P2fireworks8.x = display.contentCenterX-470
      P2fireworks8.y = display.contentCenterY+120
      P2fireworks8:scale(3.2, 3.2)
      P2fireworks8:setSequence( "Large5" )
      P2fireworks8:play()
    end
    if P2fireworksSeconds == 2 then
      display.remove( P2fireworks4 )
      display.remove( P2fireworks7 )

      P2fireworks9 = display.newSprite(LargeFirework5Sheet1, FireworkData)
      P2fireworks9.x = display.contentCenterX-470
      P2fireworks9.y = display.contentCenterY+120
      P2fireworks9:scale(3.2, 3.2)
      P2fireworks9:setSequence( "Large4" )
      P2fireworks9:play()
    end
    if P2fireworksSeconds == 1 then
      display.remove( P2fireworks5 )
      display.remove( P2fireworks8 )
    end
    if P2fireworksSeconds <= 0 then
      display.remove( P2fireworks9 )
      timer.cancel( P2fireworkstimer )
    end
  end
end

function P3fireworks ()

  P3fireworks1 = display.newSprite(SmallFirework1Sheet1, FireworkData)
  P3fireworks1.x = display.contentCenterX+470
  P3fireworks1.y = display.contentCenterY+120
  P3fireworks1:scale(3, 3)
  P3fireworks1:setSequence( "Small1" )
  P3fireworks1:play()

  local P3fireworksSeconds = 7

  local function P3fireworksTimer( event )

    -- Decrement the number of seconds
    P3fireworksSeconds = P3fireworksSeconds - 1
 
    -- Time is tracked in seconds; convert it to minutes and seconds
    local minutes = math.floor( P3fireworksSeconds / 1 )
    local seconds = P3fireworksSeconds % 1
 
    P3fireworkstimecheck ()
 
  end
 
  P3fireworkstimer = timer.performWithDelay( 750, P3fireworksTimer, P3fireworksSeconds )
 
  function P3fireworkstimecheck ()
    if P3fireworksSeconds == 6 then
      P3fireworks2 = display.newSprite(SmallFirework2Sheet1, FireworkData)
      P3fireworks2.x = display.contentCenterX+470
      P3fireworks2.y = display.contentCenterY+120
      P3fireworks2:scale(3, 3)
      P3fireworks2:setSequence( "Small2" )
      P3fireworks2:play()
    end
    if P3fireworksSeconds == 5 then
      display.remove( P3fireworks1 )
      P3fireworks3 = display.newSprite(LargeFirework1Sheet1, FireworkData)
      P3fireworks3.x = display.contentCenterX+470
      P3fireworks3.y = display.contentCenterY+120
      P3fireworks3:scale(3, 3)
      P3fireworks3:setSequence( "Large1" )
      P3fireworks3:play()

      P3fireworks6 = display.newSprite(SmallFirework3Sheet1, FireworkData)
      P3fireworks6.x = display.contentCenterX+470
      P3fireworks6.y = display.contentCenterY+120
      P3fireworks6:scale(3.2, 3.2)
      P3fireworks6:setSequence( "Small3" )
      P3fireworks6:play()
    end
    if P3fireworksSeconds == 4 then
      display.remove( P3fireworks2 )
      P3fireworks4 = display.newSprite(LargeFirework1Sheet1, FireworkData)
      P3fireworks4.x = display.contentCenterX+470
      P3fireworks4.y = display.contentCenterY+120
      P3fireworks4:scale(3, 3)
      P3fireworks4:setSequence( "Large2" )
      P3fireworks4:play()

      P3fireworks7 = display.newSprite(SmallFirework4Sheet1, FireworkData)
      P3fireworks7.x = display.contentCenterX+470
      P3fireworks7.y = display.contentCenterY+120
      P3fireworks7:scale(3.2, 3.2)
      P3fireworks7:setSequence( "Small4" )
      P3fireworks7:play()
    end
    if P3fireworksSeconds == 3 then
      display.remove( P3fireworks3 )
      display.remove( P3fireworks6 )
      P3fireworks5 = display.newSprite(LargeFirework1Sheet1, FireworkData)
      P3fireworks5.x = display.contentCenterX+470
      P3fireworks5.y = display.contentCenterY+120
      P3fireworks5:scale(3, 3)
      P3fireworks5:setSequence( "Large3" )
      P3fireworks5:play()

      P3fireworks8 = display.newSprite(LargeFirework4Sheet1, FireworkData)
      P3fireworks8.x = display.contentCenterX+470
      P3fireworks8.y = display.contentCenterY+120
      P3fireworks8:scale(3.2, 3.2)
      P3fireworks8:setSequence( "Large5" )
      P3fireworks8:play()
    end
    if P3fireworksSeconds == 2 then
      display.remove( P3fireworks4 )
      display.remove( P3fireworks7 )

      P3fireworks9 = display.newSprite(LargeFirework5Sheet1, FireworkData)
      P3fireworks9.x = display.contentCenterX+470
      P3fireworks9.y = display.contentCenterY+120
      P3fireworks9:scale(3.2, 3.2)
      P3fireworks9:setSequence( "Large4" )
      P3fireworks9:play()
    end
    if P3fireworksSeconds == 1 then
      display.remove( P3fireworks5 )
      display.remove( P3fireworks8 )
    end
    if P3fireworksSeconds <= 0 then
      display.remove( P3fireworks9 )
      timer.cancel( P3fireworkstimer )
    end
  end
end

function P4fireworks ()

  P4fireworks1 = display.newSprite(SmallFirework1Sheet1, FireworkData)
  P4fireworks1.x = display.contentCenterX+1440
  P4fireworks1.y = display.contentCenterY+120
  P4fireworks1:scale(3, 3)
  P4fireworks1:setSequence( "Small1" )
  P4fireworks1:play()

  local P4fireworksSeconds = 7

  local function P4fireworksTimer( event )

    -- Decrement the number of seconds
    P4fireworksSeconds = P4fireworksSeconds - 1
 
    -- Time is tracked in seconds; convert it to minutes and seconds
    local minutes = math.floor( P4fireworksSeconds / 1 )
    local seconds = P4fireworksSeconds % 1
 
    P4fireworkstimecheck ()
 
  end
 
  P4fireworkstimer = timer.performWithDelay( 750, P4fireworksTimer, P4fireworksSeconds )
 
  function P4fireworkstimecheck ()
    if P4fireworksSeconds == 6 then
      P4fireworks2 = display.newSprite(SmallFirework2Sheet1, FireworkData)
      P4fireworks2.x = display.contentCenterX+1440
      P4fireworks2.y = display.contentCenterY+120
      P4fireworks2:scale(3, 3)
      P4fireworks2:setSequence( "Small2" )
      P4fireworks2:play()
    end
    if P4fireworksSeconds == 5 then
      display.remove( P4fireworks1 )
      P4fireworks3 = display.newSprite(LargeFirework1Sheet1, FireworkData)
      P4fireworks3.x = display.contentCenterX+1440
      P4fireworks3.y = display.contentCenterY+120
      P4fireworks3:scale(3, 3)
      P4fireworks3:setSequence( "Large1" )
      P4fireworks3:play()

      P4fireworks6 = display.newSprite(SmallFirework3Sheet1, FireworkData)
      P4fireworks6.x = display.contentCenterX+1440
      P4fireworks6.y = display.contentCenterY+120
      P4fireworks6:scale(3.2, 3.2)
      P4fireworks6:setSequence( "Small3" )
      P4fireworks6:play()
    end
    if P4fireworksSeconds == 4 then
      display.remove( P4fireworks2 )
      P4fireworks4 = display.newSprite(LargeFirework1Sheet1, FireworkData)
      P4fireworks4.x = display.contentCenterX+1440
      P4fireworks4.y = display.contentCenterY+120
      P4fireworks4:scale(3, 3)
      P4fireworks4:setSequence( "Large2" )
      P4fireworks4:play()

      P4fireworks7 = display.newSprite(SmallFirework4Sheet1, FireworkData)
      P4fireworks7.x = display.contentCenterX+1440
      P4fireworks7.y = display.contentCenterY+120
      P4fireworks7:scale(3.2, 3.2)
      P4fireworks7:setSequence( "Small4" )
      P4fireworks7:play()
    end
    if P4fireworksSeconds == 3 then
      display.remove( P4fireworks3 )
      display.remove( P4fireworks6 )
      P4fireworks5 = display.newSprite(LargeFirework1Sheet1, FireworkData)
      P4fireworks5.x = display.contentCenterX+1440
      P4fireworks5.y = display.contentCenterY+120
      P4fireworks5:scale(3, 3)
      P4fireworks5:setSequence( "Large3" )
      P4fireworks5:play()

      P4fireworks8 = display.newSprite(LargeFirework4Sheet1, FireworkData)
      P4fireworks8.x = display.contentCenterX+1440
      P4fireworks8.y = display.contentCenterY+120
      P4fireworks8:scale(3.2, 3.2)
      P4fireworks8:setSequence( "Large5" )
      P4fireworks8:play()
    end
    if P4fireworksSeconds == 2 then
      display.remove( P4fireworks4 )
      display.remove( P4fireworks7 )

      P4fireworks9 = display.newSprite(LargeFirework5Sheet1, FireworkData)
      P4fireworks9.x = display.contentCenterX+1440
      P4fireworks9.y = display.contentCenterY+120
      P4fireworks9:scale(3.2, 3.2)
      P4fireworks9:setSequence( "Large4" )
      P4fireworks9:play()
    end
    if P4fireworksSeconds == 1 then
      display.remove( P4fireworks5 )
      display.remove( P4fireworks8 )
    end
    if P4fireworksSeconds <= 0 then
      display.remove( P4fireworks9 )
      timer.cancel( P4fireworkstimer )
    end
  end
end

